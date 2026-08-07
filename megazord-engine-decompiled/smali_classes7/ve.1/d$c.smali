.class public Lve/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:F

.field public b:Lve/d$c;

.field public c:Lve/d$c;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lve/d$c;->a:F

    return-void
.end method


# virtual methods
.method public a()Lve/d$c;
    .locals 1

    iget-object v0, p0, Lve/d$c;->c:Lve/d$c;

    return-object v0
.end method

.method public b()Lve/d$c;
    .locals 1

    iget-object v0, p0, Lve/d$c;->b:Lve/d$c;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lve/d$c;->a:F

    return v0
.end method

.method public d(Lve/d$c;)V
    .locals 0

    iput-object p1, p0, Lve/d$c;->c:Lve/d$c;

    return-void
.end method

.method public e(Lve/d$c;)V
    .locals 0

    iput-object p1, p0, Lve/d$c;->b:Lve/d$c;

    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lve/d$c;->a:F

    return-void
.end method
