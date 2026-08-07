.class public final LAg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = -0x61c88647

.field public static final b:I = 0x10

.field public static final c:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:LAg/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:LAg/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEg/T;

    const-string v1, "REHASH"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, LAg/c;->c:LEg/T;

    new-instance v0, LAg/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LAg/l;-><init>(Ljava/lang/Object;)V

    sput-object v0, LAg/c;->d:LAg/l;

    new-instance v0, LAg/l;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, LAg/l;-><init>(Ljava/lang/Object;)V

    sput-object v0, LAg/c;->e:LAg/l;

    return-void
.end method

.method public static final synthetic a()LEg/T;
    .locals 1

    sget-object v0, LAg/c;->c:LEg/T;

    return-object v0
.end method

.method public static final synthetic b(Ljava/lang/Object;)LAg/l;
    .locals 0

    invoke-static {p0}, LAg/c;->d(Ljava/lang/Object;)LAg/l;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Ljava/lang/Void;
    .locals 1

    invoke-static {}, LAg/c;->e()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public static final d(Ljava/lang/Object;)LAg/l;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, LAg/c;->d:LAg/l;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, LAg/c;->e:LAg/l;

    goto :goto_0

    :cond_1
    new-instance v0, LAg/l;

    invoke-direct {v0, p0}, LAg/l;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final e()Ljava/lang/Void;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
