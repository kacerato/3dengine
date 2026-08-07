.class public final LS0/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LS0/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;LS0/p;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LS0/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS0/B;->a:Ljava/lang/String;

    iput-object p2, p0, LS0/B;->b:LS0/p;

    return-void
.end method

.method public static bridge synthetic a(LS0/B;)LS0/p;
    .locals 0

    iget-object p0, p0, LS0/B;->b:LS0/p;

    return-object p0
.end method

.method public static bridge synthetic b(LS0/B;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LS0/B;->a:Ljava/lang/String;

    return-object p0
.end method
