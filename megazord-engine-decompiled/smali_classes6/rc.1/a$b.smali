.class public Lrc/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrc/a;->b()Lvc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Llc/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$e;->SURFACE:Lcom/google/android/filament/filamat/MaterialBuilder$e;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->r(Lcom/google/android/filament/filamat/MaterialBuilder$e;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$n;->UNLIT:Lcom/google/android/filament/filamat/MaterialBuilder$n;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->D(Lcom/google/android/filament/filamat/MaterialBuilder$n;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$t;->TANGENTS:Lcom/google/android/filament/filamat/MaterialBuilder$t;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->B(Lcom/google/android/filament/filamat/MaterialBuilder$t;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$s;->CUSTOM0:Lcom/google/android/filament/filamat/MaterialBuilder$s;

    const-string v1, "matcapWorldNormal"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/filament/filamat/MaterialBuilder;->S(Lcom/google/android/filament/filamat/MaterialBuilder$s;Ljava/lang/String;)Lcom/google/android/filament/filamat/MaterialBuilder;

    sget-object v0, Lcom/google/android/filament/filamat/MaterialBuilder$c;->BACK:Lcom/google/android/filament/filamat/MaterialBuilder$c;

    invoke-virtual {p1, v0}, Lcom/google/android/filament/filamat/MaterialBuilder;->h(Lcom/google/android/filament/filamat/MaterialBuilder$c;)Lcom/google/android/filament/filamat/MaterialBuilder;

    return-void
.end method
