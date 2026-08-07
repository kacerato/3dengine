.class public final Lp0/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls3/d<",
        "Lp0/n;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lp0/a$e;

.field public static final b:Ls3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp0/a$e;

    invoke-direct {v0}, Lp0/a$e;-><init>()V

    sput-object v0, Lp0/a$e;->a:Lp0/a$e;

    const-string v0, "clientMetrics"

    invoke-static {v0}, Ls3/c;->d(Ljava/lang/String;)Ls3/c;

    move-result-object v0

    sput-object v0, Lp0/a$e;->b:Ls3/c;

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

    check-cast p1, Lp0/n;

    check-cast p2, Ls3/e;

    invoke-virtual {p0, p1, p2}, Lp0/a$e;->b(Lp0/n;Ls3/e;)V

    return-void
.end method

.method public b(Lp0/n;Ls3/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lp0/a$e;->b:Ls3/c;

    invoke-virtual {p1}, Lp0/n;->c()Lu0/a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    return-void
.end method
