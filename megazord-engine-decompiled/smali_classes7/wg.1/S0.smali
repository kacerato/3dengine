.class public final Lwg/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:LEg/T;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final c:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:I = -0x1

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:LEg/T;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Lwg/p0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lwg/p0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LEg/T;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwg/S0;->a:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwg/S0;->b:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwg/S0;->c:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwg/S0;->d:LEg/T;

    new-instance v0, LEg/T;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, LEg/T;-><init>(Ljava/lang/String;)V

    sput-object v0, Lwg/S0;->h:LEg/T;

    new-instance v0, Lwg/p0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwg/p0;-><init>(Z)V

    sput-object v0, Lwg/S0;->i:Lwg/p0;

    new-instance v0, Lwg/p0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lwg/p0;-><init>(Z)V

    sput-object v0, Lwg/S0;->j:Lwg/p0;

    return-void
.end method

.method public static final synthetic a()LEg/T;
    .locals 1

    sget-object v0, Lwg/S0;->a:LEg/T;

    return-object v0
.end method

.method public static final synthetic b()LEg/T;
    .locals 1

    sget-object v0, Lwg/S0;->c:LEg/T;

    return-object v0
.end method

.method public static final synthetic c()Lwg/p0;
    .locals 1

    sget-object v0, Lwg/S0;->j:Lwg/p0;

    return-object v0
.end method

.method public static final synthetic d()Lwg/p0;
    .locals 1

    sget-object v0, Lwg/S0;->i:Lwg/p0;

    return-object v0
.end method

.method public static final synthetic e()LEg/T;
    .locals 1

    sget-object v0, Lwg/S0;->h:LEg/T;

    return-object v0
.end method

.method public static final synthetic f()LEg/T;
    .locals 1

    sget-object v0, Lwg/S0;->d:LEg/T;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p0, Lwg/D0;

    if-eqz v0, :cond_0

    new-instance v0, Lwg/E0;

    check-cast p0, Lwg/D0;

    invoke-direct {v0, p0}, Lwg/E0;-><init>(Lwg/D0;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p0, Lwg/E0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lwg/E0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lwg/E0;->a:Lwg/D0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
