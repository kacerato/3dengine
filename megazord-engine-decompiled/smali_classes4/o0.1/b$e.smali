.class public final Lo0/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls3/d<",
        "Lo0/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo0/b$e;

.field public static final b:Ls3/c;

.field public static final c:Ls3/c;

.field public static final d:Ls3/c;

.field public static final e:Ls3/c;

.field public static final f:Ls3/c;

.field public static final g:Ls3/c;

.field public static final h:Ls3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/b$e;

    invoke-direct {v0}, Lo0/b$e;-><init>()V

    sput-object v0, Lo0/b$e;->a:Lo0/b$e;

    const-string v0, "requestTimeMs"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$e;->b:Ls3/c;

    const-string v0, "requestUptimeMs"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$e;->c:Ls3/c;

    const-string v0, "clientInfo"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$e;->d:Ls3/c;

    const-string v0, "logSource"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$e;->e:Ls3/c;

    const-string v0, "logSourceName"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$e;->f:Ls3/c;

    const-string v0, "logEvent"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$e;->g:Ls3/c;

    const-string v0, "qosTier"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$e;->h:Ls3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lo0/m;

    check-cast p2, Ls3/e;

    invoke-virtual {p0, p1, p2}, Lo0/b$e;->b(Lo0/m;Ls3/e;)V

    return-void
.end method

.method public b(Lo0/m;Ls3/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lo0/b$e;->b:Ls3/c;

    invoke-virtual {p1}, Lo0/m;->g()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ls3/e;->b(Ls3/c;J)Ls3/e;

    sget-object v0, Lo0/b$e;->c:Ls3/c;

    invoke-virtual {p1}, Lo0/m;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ls3/e;->b(Ls3/c;J)Ls3/e;

    sget-object v0, Lo0/b$e;->d:Ls3/c;

    invoke-virtual {p1}, Lo0/m;->b()Lo0/k;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$e;->e:Ls3/c;

    invoke-virtual {p1}, Lo0/m;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$e;->f:Ls3/c;

    invoke-virtual {p1}, Lo0/m;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$e;->g:Ls3/c;

    invoke-virtual {p1}, Lo0/m;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$e;->h:Ls3/c;

    invoke-virtual {p1}, Lo0/m;->f()Lo0/p;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    return-void
.end method
