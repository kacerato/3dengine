.class public final Lo0/b$f;
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
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls3/d<",
        "Lo0/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo0/b$f;

.field public static final b:Ls3/c;

.field public static final c:Ls3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/b$f;

    invoke-direct {v0}, Lo0/b$f;-><init>()V

    sput-object v0, Lo0/b$f;->a:Lo0/b$f;

    const-string v0, "networkType"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$f;->b:Ls3/c;

    const-string v0, "mobileSubtype"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$f;->c:Ls3/c;

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

    check-cast p1, Lo0/o;

    check-cast p2, Ls3/e;

    invoke-virtual {p0, p1, p2}, Lo0/b$f;->b(Lo0/o;Ls3/e;)V

    return-void
.end method

.method public b(Lo0/o;Ls3/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lo0/b$f;->b:Ls3/c;

    invoke-virtual {p1}, Lo0/o;->c()Lo0/o$c;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lo0/b$f;->c:Ls3/c;

    invoke-virtual {p1}, Lo0/o;->b()Lo0/o$b;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    return-void
.end method
