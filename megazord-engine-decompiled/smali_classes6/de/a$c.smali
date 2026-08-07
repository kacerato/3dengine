.class public final Lde/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/a;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lde/a;


# direct methods
.method public constructor <init>(Lde/a;)V
    .locals 0

    iput-object p1, p0, Lde/a$c;->b:Lde/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lde/a$c;->b:Lde/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lde/a;->a(Lde/a;F)V

    return-void
.end method
