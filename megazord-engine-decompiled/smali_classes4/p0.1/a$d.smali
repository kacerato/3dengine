.class public final Lp0/a$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls3/d<",
        "Lu0/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lp0/a$d;

.field public static final b:Ls3/c;

.field public static final c:Ls3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lp0/a$d;

    invoke-direct {v0}, Lp0/a$d;-><init>()V

    sput-object v0, Lp0/a$d;->a:Lp0/a$d;

    const-string v0, "logSource"

    invoke-static {v0}, Ls3/c;->a(Ljava/lang/String;)Ls3/c$b;

    move-result-object v0

    invoke-static {}, Lw3/a;->b()Lw3/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lw3/a;->d(I)Lw3/a;

    move-result-object v1

    invoke-virtual {v1}, Lw3/a;->a()Lw3/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls3/c$b;->b(Ljava/lang/annotation/Annotation;)Ls3/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ls3/c$b;->a()Ls3/c;

    move-result-object v0

    sput-object v0, Lp0/a$d;->b:Ls3/c;

    const-string v0, "logEventDropped"

    invoke-static {v0}, Ls3/c;->a(Ljava/lang/String;)Ls3/c$b;

    move-result-object v0

    invoke-static {}, Lw3/a;->b()Lw3/a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lw3/a;->d(I)Lw3/a;

    move-result-object v1

    invoke-virtual {v1}, Lw3/a;->a()Lw3/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls3/c$b;->b(Ljava/lang/annotation/Annotation;)Ls3/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ls3/c$b;->a()Ls3/c;

    move-result-object v0

    sput-object v0, Lp0/a$d;->c:Ls3/c;

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

    check-cast p1, Lu0/d;

    check-cast p2, Ls3/e;

    invoke-virtual {p0, p1, p2}, Lp0/a$d;->b(Lu0/d;Ls3/e;)V

    return-void
.end method

.method public b(Lu0/d;Ls3/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lp0/a$d;->b:Ls3/c;

    invoke-virtual {p1}, Lu0/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    sget-object v0, Lp0/a$d;->c:Ls3/c;

    invoke-virtual {p1}, Lu0/d;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ls3/e;->h(Ls3/c;Ljava/lang/Object;)Ls3/e;

    return-void
.end method
