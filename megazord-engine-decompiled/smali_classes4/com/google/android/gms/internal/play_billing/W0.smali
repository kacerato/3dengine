.class public final Lcom/google/android/gms/internal/play_billing/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/play_billing/s1;


# static fields
.field public static final b:Lcom/google/android/gms/internal/play_billing/d1;


# instance fields
.field public final a:Lcom/google/android/gms/internal/play_billing/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/U0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/play_billing/U0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/play_billing/W0;->b:Lcom/google/android/gms/internal/play_billing/d1;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/play_billing/V0;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/p0;->c()Lcom/google/android/gms/internal/play_billing/p0;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/play_billing/d1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/play_billing/W0;->b:Lcom/google/android/gms/internal/play_billing/d1;

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/play_billing/d1;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/play_billing/V0;-><init>([Lcom/google/android/gms/internal/play_billing/d1;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/play_billing/E0;->d:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/play_billing/W0;->a:Lcom/google/android/gms/internal/play_billing/d1;

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/play_billing/b1;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/play_billing/b1;->O1()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/r1;
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/t1;->y(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/W0;->a:Lcom/google/android/gms/internal/play_billing/d1;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/play_billing/d1;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/play_billing/b1;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/b1;->N1()Z

    move-result v0

    const-class v1, Lcom/google/android/gms/internal/play_billing/v0;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/t1;->u()Lcom/google/android/gms/internal/play_billing/I1;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j0;->b()Lcom/google/android/gms/internal/play_billing/h0;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/b1;->zza()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/j1;->i(Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/f1;)Lcom/google/android/gms/internal/play_billing/j1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/t1;->t()Lcom/google/android/gms/internal/play_billing/I1;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j0;->a()Lcom/google/android/gms/internal/play_billing/h0;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/play_billing/b1;->zza()Lcom/google/android/gms/internal/play_billing/f1;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/j1;->i(Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/f1;)Lcom/google/android/gms/internal/play_billing/j1;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/W0;->b(Lcom/google/android/gms/internal/play_billing/b1;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/m1;->b()Lcom/google/android/gms/internal/play_billing/l1;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S0;->d()Lcom/google/android/gms/internal/play_billing/S0;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/t1;->u()Lcom/google/android/gms/internal/play_billing/I1;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j0;->b()Lcom/google/android/gms/internal/play_billing/h0;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/a1;->b()Lcom/google/android/gms/internal/play_billing/Z0;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/i1;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/b1;Lcom/google/android/gms/internal/play_billing/l1;Lcom/google/android/gms/internal/play_billing/S0;Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/Z0;)Lcom/google/android/gms/internal/play_billing/i1;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/m1;->b()Lcom/google/android/gms/internal/play_billing/l1;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S0;->d()Lcom/google/android/gms/internal/play_billing/S0;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/t1;->u()Lcom/google/android/gms/internal/play_billing/I1;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/a1;->b()Lcom/google/android/gms/internal/play_billing/Z0;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/i1;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/b1;Lcom/google/android/gms/internal/play_billing/l1;Lcom/google/android/gms/internal/play_billing/S0;Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/Z0;)Lcom/google/android/gms/internal/play_billing/i1;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/W0;->b(Lcom/google/android/gms/internal/play_billing/b1;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/m1;->a()Lcom/google/android/gms/internal/play_billing/l1;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S0;->c()Lcom/google/android/gms/internal/play_billing/S0;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/t1;->t()Lcom/google/android/gms/internal/play_billing/I1;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j0;->a()Lcom/google/android/gms/internal/play_billing/h0;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/a1;->a()Lcom/google/android/gms/internal/play_billing/Z0;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/i1;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/b1;Lcom/google/android/gms/internal/play_billing/l1;Lcom/google/android/gms/internal/play_billing/S0;Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/Z0;)Lcom/google/android/gms/internal/play_billing/i1;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/m1;->a()Lcom/google/android/gms/internal/play_billing/l1;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/S0;->c()Lcom/google/android/gms/internal/play_billing/S0;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/t1;->t()Lcom/google/android/gms/internal/play_billing/I1;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/a1;->a()Lcom/google/android/gms/internal/play_billing/Z0;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/play_billing/i1;->z(Ljava/lang/Class;Lcom/google/android/gms/internal/play_billing/b1;Lcom/google/android/gms/internal/play_billing/l1;Lcom/google/android/gms/internal/play_billing/S0;Lcom/google/android/gms/internal/play_billing/I1;Lcom/google/android/gms/internal/play_billing/h0;Lcom/google/android/gms/internal/play_billing/Z0;)Lcom/google/android/gms/internal/play_billing/i1;

    move-result-object p1

    :goto_0
    return-object p1
.end method
