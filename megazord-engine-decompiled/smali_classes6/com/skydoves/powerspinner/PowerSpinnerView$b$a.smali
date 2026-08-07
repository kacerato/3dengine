.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lge/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView$b;->n(Leg/a;)Lcom/skydoves/powerspinner/PowerSpinnerView$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Leg/a;


# direct methods
.method public constructor <init>(Leg/a;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b$a;->a:Leg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$b$a;->a:Leg/a;

    invoke-interface {v0}, Leg/a;->invoke()Ljava/lang/Object;

    return-void
.end method
