.class public final Lo0/b$a;
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
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls3/d<",
        "Lo0/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo0/b$a;

.field public static final b:Ls3/c;

.field public static final c:Ls3/c;

.field public static final d:Ls3/c;

.field public static final e:Ls3/c;

.field public static final f:Ls3/c;

.field public static final g:Ls3/c;

.field public static final h:Ls3/c;

.field public static final i:Ls3/c;

.field public static final j:Ls3/c;

.field public static final k:Ls3/c;

.field public static final l:Ls3/c;

.field public static final m:Ls3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/b$a;

    invoke-direct {v0}, Lo0/b$a;-><init>()V

    sput-object v0, Lo0/b$a;->a:Lo0/b$a;

    const-string v0, "sdkVersion"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->b:Ls3/c;

    const-string v0, "model"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->c:Ls3/c;

    const-string v0, "hardware"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->d:Ls3/c;

    const-string v0, "device"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->e:Ls3/c;

    const-string v0, "product"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->f:Ls3/c;

    const-string v0, "osBuild"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->g:Ls3/c;

    const-string v0, "manufacturer"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->h:Ls3/c;

    const-string v0, "fingerprint"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->i:Ls3/c;

    const-string v0, "locale"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->j:Ls3/c;

    const-string v0, "country"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->k:Ls3/c;

    const-string v0, "mccMnc"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->l:Ls3/c;

    const-string v0, "applicationBuild"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$a;->m:Ls3/c;

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

    check-cast p1, Lo0/a;

    check-cast p2, Ls3/e;

    invoke-virtual {p0, p1, p2}, Lo0/b$a;->b(Lo0/a;Ls3/e;)V

    return-void
.end method

.method public b(Lo0/a;Ls3/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lo0/b$a;->b:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->c:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->d:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->e:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->f:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->g:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->h:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->i:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->j:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->k:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->l:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$a;->m:Ls3/c;

    invoke-virtual {p1}, Lo0/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    return-void
.end method
