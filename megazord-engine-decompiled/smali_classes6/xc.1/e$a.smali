.class public Lxc/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxc/e$a$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

.field public d:Llc/b;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxc/f;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lxc/g;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Z

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lxc/e$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matName"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxc/e$a;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxc/e$a;->f:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxc/e$a;->k:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lxc/e$a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromRT"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxc/e$a;->e:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxc/e$a;->f:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lxc/e$a;->k:Ljava/util/Map;

    .line 10
    iput-boolean p1, p0, Lxc/e$a;->j:Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a()Lxc/e$a;
    .locals 2

    invoke-virtual {p0}, Lxc/e$a;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lxc/e$a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxc/e$a;->d:Llc/b;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->q(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {p0}, Lxc/e$a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lxc/e$a;->d:Llc/b;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->s(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    :cond_0
    iget-object v0, p0, Lxc/e$a;->d:Llc/b;

    invoke-virtual {v0}, Llc/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lxc/e$a;->g:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxc/e$a;->i:Z

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to compile material"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "shader code is empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lxc/e$a;->g:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public c()Lxc/e$a;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lxc/e$a;->d(LJAVARuntime/CompileErrorListener;)Lxc/e$a;

    return-object p0
.end method

.method public d(LJAVARuntime/CompileErrorListener;)Lxc/e$a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compileErrorListener"
        }
    .end annotation

    invoke-virtual {p0}, Lxc/e$a;->z()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lxc/e$a;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lxc/e$a;->d:Llc/b;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->q(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    invoke-virtual {p0}, Lxc/e$a;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lxc/e$a;->d:Llc/b;

    invoke-virtual {v1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->s(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    :cond_0
    iget-object v0, p0, Lxc/e$a;->d:Llc/b;

    invoke-virtual {v0}, Llc/b;->d()Lcom/google/android/filament/filamat/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/filament/filamat/b;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lxc/e$a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance v0, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v1, Lcom/google/android/filament/Material$b;

    invoke-direct {v1}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    iput-object v0, p0, Lxc/e$a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxc/e$a;->i:Z

    return-object p0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "MaterialPackage returned null - critical compilation failure"

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, LJAVARuntime/CompileErrorListener;->onError(Ljava/lang/String;)V

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to compile material: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "shader code is empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()Lxc/e;
    .locals 4

    new-instance v0, Lxc/e;

    iget-object v1, p0, Lxc/e$a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    iget-object v2, p0, Lxc/e$a;->e:Ljava/util/List;

    iget-object v3, p0, Lxc/e$a;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lxc/e;-><init>(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxc/e$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lxc/e$a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxc/e$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lxc/e$a;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxc/e$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    iget-object v0, p0, Lxc/e$a;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxc/e$a$a;

    iget-object v0, v0, Lxc/e$a$a;->a:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget-object v2, p0, Lxc/e$a;->k:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxc/e$a$a;

    iget-object p1, p1, Lxc/e$a$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method public j()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lxc/e$a;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lxc/e$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lxc/e$a;
    .locals 2

    new-instance v0, Llc/b;

    invoke-direct {v0}, Llc/b;-><init>()V

    iget-object v1, p0, Lxc/e$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->u(Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$h;->MOBILE:Lcom/google/android/filament/filamat/MaterialBuilder$h;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->w(Lcom/google/android/filament/filamat/MaterialBuilder$h;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$e;->SURFACE:Lcom/google/android/filament/filamat/MaterialBuilder$e;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->r(Lcom/google/android/filament/filamat/MaterialBuilder$e;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$n;->LIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$a;->MASKED:Lcom/google/android/filament/filamat/MaterialBuilder$a;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->c(Lcom/google/android/filament/filamat/MaterialBuilder$a;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$t;->UV0:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$t;->TANGENTS:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->h(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    move-result-object v0

    check-cast v0, Llc/b;

    iput-object v0, p0, Lxc/e$a;->d:Llc/b;

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v0, p0, Lxc/e$a;->j:Z

    if-eqz v0, :cond_1

    :goto_0
    const-string v0, "use itsmagic."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lxc/e$a;->k:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxc/e$a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lxc/e$a$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Lxc/e$a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public n(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "format",
            "precision",
            "name"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lxc/e$a;->d:Llc/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lxc/e$a;->f:Ljava/util/List;

    new-instance v1, Lxc/g;

    invoke-direct {v1, p1, p2, p3, p4}, Lxc/g;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public o(Lxc/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampler"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lxc/e$a;->d:Llc/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lxc/g;->d()Lcom/google/android/filament/filamat/MaterialBuilder$m;

    move-result-object v1

    invoke-virtual {p1}, Lxc/g;->a()Lcom/google/android/filament/filamat/MaterialBuilder$l;

    move-result-object v2

    invoke-virtual {p1}, Lxc/g;->c()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v3

    invoke-virtual {p1}, Lxc/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/filament/filamat/MaterialBuilder;->C(Lcom/google/android/filament/filamat/MaterialBuilder$m;Lcom/google/android/filament/filamat/MaterialBuilder$l;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lxc/e$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public p(LUc/b;)Lxc/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentCode"
        }
    .end annotation

    invoke-virtual {p1}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxc/e$a;->q(Ljava/lang/String;)Lxc/e$a;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lxc/e$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lxc/e$a;->a:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public r(LUc/b;)Lxc/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertexCode"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LUc/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxc/e$a;->s(Ljava/lang/String;)Lxc/e$a;

    :cond_0
    return-object p0
.end method

.method public s(Ljava/lang/String;)Lxc/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    iput-object p1, p0, Lxc/e$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public t(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "precision",
            "name"
        }
    .end annotation

    :try_start_0
    iget-object p2, p0, Lxc/e$a;->d:Llc/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1, p3}, Lcom/google/android/filament/filamat/MaterialBuilder;->O(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p2, p0, Lxc/e$a;->e:Ljava/util/List;

    new-instance v0, Lxc/f;

    invoke-direct {v0, p1, p3}, Lxc/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public u(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "name"
        }
    .end annotation

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$g;->DEFAULT:Lcom/google/android/filament/filamat/MaterialBuilder$g;

    invoke-virtual {p0, p1, v0, p2}, Lxc/e$a;->t(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)V

    return-void
.end method

.method public v(Lxc/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lxc/e$a;->d:Llc/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lxc/f;->d()Lcom/google/android/filament/filamat/MaterialBuilder$r;

    move-result-object v1

    invoke-virtual {p1}, Lxc/f;->b()Lcom/google/android/filament/filamat/MaterialBuilder$g;

    move-result-object v2

    invoke-virtual {p1}, Lxc/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/filamat/MaterialBuilder;->N(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lxc/e$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w(Lcom/google/android/filament/filamat/MaterialBuilder$r;Lcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "precision",
            "name",
            "size"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lxc/e$a;->d:Llc/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p4, p2, p3}, Lcom/google/android/filament/filamat/MaterialBuilder;->P(Lcom/google/android/filament/filamat/MaterialBuilder$r;ILcom/google/android/filament/filamat/MaterialBuilder$g;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lxc/e$a;->e:Ljava/util/List;

    new-instance v1, Lxc/f;

    invoke-direct {v1, p1, p3, p2, p4}, Lxc/f;-><init>(Lcom/google/android/filament/filamat/MaterialBuilder$r;Ljava/lang/String;Lcom/google/android/filament/filamat/MaterialBuilder$g;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public x(Llc/b;)Lxc/e$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    iput-object p1, p0, Lxc/e$a;->d:Llc/b;

    return-object p0
.end method

.method public y(Ljava/nio/ByteBuffer;LJAVARuntime/CompileErrorListener;)Lxc/e$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "payload",
            "compileErrorListener"
        }
    .end annotation

    invoke-virtual {p0}, Lxc/e$a;->z()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lxc/e$a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    new-instance p2, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    new-instance v0, Lcom/google/android/filament/Material$b;

    invoke-direct {v0}, Lcom/google/android/filament/Material$b;-><init>()V

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/filament/Material$b;->b(Ljava/nio/Buffer;I)Lcom/google/android/filament/Material$b;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;-><init>(Lcom/google/android/filament/Material$b;)V

    iput-object p2, p0, Lxc/e$a;->c:Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentMaterialTemplate;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lxc/e$a;->i:Z

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "shader code is empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Lxc/e$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lxc/e$a;->A(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
