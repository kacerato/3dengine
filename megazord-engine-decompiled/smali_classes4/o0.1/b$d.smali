.class public final Lo0/b$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls3/d<",
        "Lo0/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo0/b$d;

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

    new-instance v0, Lo0/b$d;

    invoke-direct {v0}, Lo0/b$d;-><init>()V

    sput-object v0, Lo0/b$d;->a:Lo0/b$d;

    const-string v0, "eventTimeMs"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$d;->b:Ls3/c;

    const-string v0, "eventCode"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$d;->c:Ls3/c;

    const-string v0, "eventUptimeMs"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$d;->d:Ls3/c;

    const-string v0, "sourceExtension"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$d;->e:Ls3/c;

    const-string v0, "sourceExtensionJsonProto3"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$d;->f:Ls3/c;

    const-string v0, "timezoneOffsetSeconds"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$d;->g:Ls3/c;

    const-string v0, "networkConnectionInfo"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$d;->h:Ls3/c;

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

    check-cast p1, Lo0/l;

    check-cast p2, Ls3/e;

    invoke-virtual {p0, p1, p2}, Lo0/b$d;->b(Lo0/l;Ls3/e;)V

    return-void
.end method

.method public b(Lo0/l;Ls3/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lo0/b$d;->b:Ls3/c;

    invoke-virtual {p1}, Lo0/l;->c()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ls3/e;->b(Ls3/c;J)Ls3/e;

    sget-object v0, Lo0/b$d;->c:Ls3/c;

    invoke-virtual {p1}, Lo0/l;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$d;->d:Ls3/c;

    invoke-virtual {p1}, Lo0/l;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ls3/e;->b(Ls3/c;J)Ls3/e;

    sget-object v0, Lo0/b$d;->e:Ls3/c;

    invoke-virtual {p1}, Lo0/l;->f()[B

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$d;->f:Ls3/c;

    invoke-virtual {p1}, Lo0/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$d;->g:Ls3/c;

    invoke-virtual {p1}, Lo0/l;->h()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Ls3/e;->b(Ls3/c;J)Ls3/e;

    sget-object v0, Lo0/b$d;->h:Ls3/c;

    invoke-virtual {p1}, Lo0/l;->e()Lo0/o;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    return-void
.end method
