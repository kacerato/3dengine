.class public Lb2/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lb2/g$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lb2/g$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lb2/g$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb2/g$b;

    invoke-direct {v0}, Lb2/g$b;-><init>()V

    sput-object v0, Lb2/g$b;->b:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb2/g$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb2/g$e;-><init>(Lb2/g$a;)V

    iput-object v0, p0, Lb2/g$b;->a:Lb2/g$e;

    return-void
.end method


# virtual methods
.method public a(FLb2/g$e;Lb2/g$e;)Lb2/g$e;
    .locals 4
    .param p2    # Lb2/g$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lb2/g$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lb2/g$b;->a:Lb2/g$e;

    iget v1, p2, Lb2/g$e;->a:F

    iget v2, p3, Lb2/g$e;->a:F

    invoke-static {v1, v2, p1}, Lm2/a;->f(FFF)F

    move-result v1

    iget v2, p2, Lb2/g$e;->b:F

    iget v3, p3, Lb2/g$e;->b:F

    invoke-static {v2, v3, p1}, Lm2/a;->f(FFF)F

    move-result v2

    iget p2, p2, Lb2/g$e;->c:F

    iget p3, p3, Lb2/g$e;->c:F

    invoke-static {p2, p3, p1}, Lm2/a;->f(FFF)F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lb2/g$e;->b(FFF)V

    iget-object p1, p0, Lb2/g$b;->a:Lb2/g$e;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    check-cast p2, Lb2/g$e;

    check-cast p3, Lb2/g$e;

    invoke-virtual {p0, p1, p2, p3}, Lb2/g$b;->a(FLb2/g$e;Lb2/g$e;)Lb2/g$e;

    move-result-object p1

    return-object p1
.end method
