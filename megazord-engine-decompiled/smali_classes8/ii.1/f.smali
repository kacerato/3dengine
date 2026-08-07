.class public Lii/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqi/d$c;
.implements Lui/g$c;
.implements Lvi/d$d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lhi/a;
    .locals 1

    new-instance v0, Lii/f;

    invoke-direct {v0}, Lii/f;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Lvi/d$b;)V
    .locals 1

    new-instance v0, Lii/f$b;

    invoke-direct {v0, p0}, Lii/f$b;-><init>(Lii/f;)V

    invoke-virtual {p1, v0}, Lvi/d$b;->e(Lvi/c;)Lvi/d$b;

    return-void
.end method

.method public b(Lui/g$b;)V
    .locals 1

    new-instance v0, Lii/f$a;

    invoke-direct {v0, p0}, Lii/f$a;-><init>(Lii/f;)V

    invoke-virtual {p1, v0}, Lui/g$b;->j(Lui/f;)Lui/g$b;

    return-void
.end method

.method public c(Lqi/d$b;)V
    .locals 1

    new-instance v0, Lji/a$b;

    invoke-direct {v0}, Lji/a$b;-><init>()V

    invoke-virtual {p1, v0}, Lqi/d$b;->g(Lri/e;)Lqi/d$b;

    return-void
.end method
