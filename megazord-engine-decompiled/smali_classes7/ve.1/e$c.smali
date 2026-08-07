.class public Lve/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Lve/e$c;

.field public c:Lve/e$c;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lve/e$c;->a:I

    return-void
.end method


# virtual methods
.method public a()Lve/e$c;
    .locals 1

    iget-object v0, p0, Lve/e$c;->c:Lve/e$c;

    return-object v0
.end method

.method public b()Lve/e$c;
    .locals 1

    iget-object v0, p0, Lve/e$c;->b:Lve/e$c;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lve/e$c;->a:I

    return v0
.end method

.method public d(Lve/e$c;)V
    .locals 0

    iput-object p1, p0, Lve/e$c;->c:Lve/e$c;

    return-void
.end method

.method public e(Lve/e$c;)V
    .locals 0

    iput-object p1, p0, Lve/e$c;->b:Lve/e$c;

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lve/e$c;->a:I

    return-void
.end method
