.class public final Lu0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/a$a;
    }
.end annotation


# static fields
.field public static final e:Lu0/a;


# instance fields
.field public final a:Lu0/f;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lu0/b;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu0/a$a;

    invoke-direct {v0}, Lu0/a$a;-><init>()V

    invoke-virtual {v0}, Lu0/a$a;->b()Lu0/a;

    move-result-object v0

    sput-object v0, Lu0/a;->e:Lu0/a;

    return-void
.end method

.method public constructor <init>(Lu0/f;Ljava/util/List;Lu0/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu0/f;",
            "Ljava/util/List<",
            "Lu0/d;",
            ">;",
            "Lu0/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/a;->a:Lu0/f;

    iput-object p2, p0, Lu0/a;->b:Ljava/util/List;

    iput-object p3, p0, Lu0/a;->c:Lu0/b;

    iput-object p4, p0, Lu0/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static b()Lu0/a;
    .locals 1

    sget-object v0, Lu0/a;->e:Lu0/a;

    return-object v0
.end method

.method public static h()Lu0/a$a;
    .locals 1

    new-instance v0, Lu0/a$a;

    invoke-direct {v0}, Lu0/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lw3/d;
        tag = 0x4
    .end annotation

    iget-object v0, p0, Lu0/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lu0/b;
    .locals 1
    .annotation runtime Lt3/a$b;
    .end annotation

    iget-object v0, p0, Lu0/a;->c:Lu0/b;

    if-nez v0, :cond_0

    invoke-static {}, Lu0/b;->a()Lu0/b;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public d()Lu0/b;
    .locals 1
    .annotation runtime Lt3/a$a;
        name = "globalMetrics"
    .end annotation

    .annotation build Lw3/d;
        tag = 0x3
    .end annotation

    iget-object v0, p0, Lu0/a;->c:Lu0/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu0/d;",
            ">;"
        }
    .end annotation

    .annotation runtime Lt3/a$a;
        name = "logSourceMetrics"
    .end annotation

    .annotation build Lw3/d;
        tag = 0x2
    .end annotation

    iget-object v0, p0, Lu0/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()Lu0/f;
    .locals 1
    .annotation runtime Lt3/a$b;
    .end annotation

    iget-object v0, p0, Lu0/a;->a:Lu0/f;

    if-nez v0, :cond_0

    invoke-static {}, Lu0/f;->a()Lu0/f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public g()Lu0/f;
    .locals 1
    .annotation runtime Lt3/a$a;
        name = "window"
    .end annotation

    .annotation build Lw3/d;
        tag = 0x1
    .end annotation

    iget-object v0, p0, Lu0/a;->a:Lu0/f;

    return-object v0
.end method

.method public i()[B
    .locals 1

    invoke-static {p0}, Lp0/n;->b(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lp0/n;->a(Ljava/lang/Object;Ljava/io/OutputStream;)V

    return-void
.end method
