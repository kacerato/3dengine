.class public final Lad/c$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lad/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lad/c$g;

.field public c:Lad/c$e;

.field public d:Ljava/lang/Throwable;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lad/c$g;->Loading:Lad/c$g;

    iput-object v0, p0, Lad/c$f;->b:Lad/c$g;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lad/c$f;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lad/c$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lad/c$f;-><init>()V

    return-void
.end method

.method public static synthetic a(Lad/c$f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lad/c$f;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lad/c$f;)Lad/c$e;
    .locals 0

    iget-object p0, p0, Lad/c$f;->c:Lad/c$e;

    return-object p0
.end method

.method public static synthetic c(Lad/c$f;Lad/c$e;)Lad/c$e;
    .locals 0

    iput-object p1, p0, Lad/c$f;->c:Lad/c$e;

    return-object p1
.end method

.method public static synthetic d(Lad/c$f;)Lad/c$g;
    .locals 0

    iget-object p0, p0, Lad/c$f;->b:Lad/c$g;

    return-object p0
.end method

.method public static synthetic e(Lad/c$f;Lad/c$g;)Lad/c$g;
    .locals 0

    iput-object p1, p0, Lad/c$f;->b:Lad/c$g;

    return-object p1
.end method

.method public static synthetic f(Lad/c$f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lad/c$f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic g(Lad/c$f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lad/c$f;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic h(Lad/c$f;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lad/c$f;->d:Ljava/lang/Throwable;

    return-object p0
.end method

.method public static synthetic i(Lad/c$f;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    iput-object p1, p0, Lad/c$f;->d:Ljava/lang/Throwable;

    return-object p1
.end method
