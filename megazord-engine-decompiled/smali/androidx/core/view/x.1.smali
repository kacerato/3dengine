.class public final synthetic Landroidx/core/view/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Leg/a;


# direct methods
.method public synthetic constructor <init>(Leg/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/x;->b:Leg/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/x;->b:Leg/a;

    invoke-static {v0}, Landroidx/core/view/ViewKt;->a(Leg/a;)V

    return-void
.end method
