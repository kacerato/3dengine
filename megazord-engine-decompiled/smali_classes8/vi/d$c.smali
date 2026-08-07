.class public Lvi/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvi/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Lvi/e;

.field public final b:Lmi/a;

.field public final synthetic c:Lvi/d;


# direct methods
.method public constructor <init>(Lvi/d;Lvi/e;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lvi/d$c;->c:Lvi/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lmi/a;

    invoke-direct {v0}, Lmi/a;-><init>()V

    iput-object v0, p0, Lvi/d$c;->b:Lmi/a;

    .line 4
    iput-object p2, p0, Lvi/d$c;->a:Lvi/e;

    .line 5
    invoke-static {p1}, Lvi/d;->c(Lvi/d;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 6
    invoke-static {p1}, Lvi/d;->c(Lvi/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvi/c;

    .line 7
    invoke-interface {v0, p0}, Lvi/c;->a(Lvi/b;)Lti/a;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lvi/d$c;->b:Lmi/a;

    invoke-virtual {v1, v0}, Lmi/a;->a(Lti/a;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lvi/d;Lvi/e;Lvi/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvi/d$c;-><init>(Lvi/d;Lvi/e;)V

    return-void
.end method


# virtual methods
.method public a(Lpi/v;)V
    .locals 1

    iget-object v0, p0, Lvi/d$c;->b:Lmi/a;

    invoke-virtual {v0, p1}, Lmi/a;->b(Lpi/v;)V

    return-void
.end method

.method public b()Lvi/e;
    .locals 1

    iget-object v0, p0, Lvi/d$c;->a:Lvi/e;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lvi/d$c;->c:Lvi/d;

    invoke-static {v0}, Lvi/d;->d(Lvi/d;)Z

    move-result v0

    return v0
.end method
