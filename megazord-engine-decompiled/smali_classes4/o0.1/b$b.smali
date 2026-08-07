.class public final Lo0/b$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls3/d<",
        "Lo0/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo0/b$b;

.field public static final b:Ls3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo0/b$b;

    invoke-direct {v0}, Lo0/b$b;-><init>()V

    sput-object v0, Lo0/b$b;->a:Lo0/b$b;

    const-string v0, "logRequest"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lo0/b$b;->b:Ls3/c;

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

    check-cast p1, Lo0/j;

    check-cast p2, Ls3/e;

    invoke-virtual {p0, p1, p2}, Lo0/b$b;->b(Lo0/j;Ls3/e;)V

    return-void
.end method

.method public b(Lo0/j;Ls3/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lo0/b$b;->b:Ls3/c;

    invoke-virtual {p1}, Lo0/j;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    return-void
.end method
