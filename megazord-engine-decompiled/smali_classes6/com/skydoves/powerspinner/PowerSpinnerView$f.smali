.class public final Lcom/skydoves/powerspinner/PowerSpinnerView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lge/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener(Leg/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lge/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Leg/r;


# direct methods
.method public constructor <init>(Leg/r;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->a:Leg/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$f;->a:Leg/r;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3, p4}, Leg/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
