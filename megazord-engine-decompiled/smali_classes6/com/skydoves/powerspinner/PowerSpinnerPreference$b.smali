.class public final Lcom/skydoves/powerspinner/PowerSpinnerPreference$b;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerPreference;->g(Lge/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/r<",
        "Ljava/lang/Integer;",
        "TT;",
        "Ljava/lang/Integer;",
        "TT;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

.field public final synthetic c:Lge/g;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerPreference;Lge/g;)V
    .locals 0

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$b;->b:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

    iput-object p2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$b;->c:Lge/g;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(ILjava/lang/Object;ILjava/lang/Object;)V
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

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$b;->c:Lge/g;

    invoke-interface {v0, p1, p2, p3, p4}, Lge/g;->a(ILjava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$b;->b:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

    invoke-static {p1, p3}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->a(Lcom/skydoves/powerspinner/PowerSpinnerPreference;I)Z

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$b;->c(ILjava/lang/Object;ILjava/lang/Object;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method
