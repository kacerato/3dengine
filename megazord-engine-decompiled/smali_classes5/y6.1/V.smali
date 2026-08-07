.class public final synthetic Ly6/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ly6/X;


# direct methods
.method public synthetic constructor <init>(Ly6/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/V;->b:Ly6/X;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly6/V;->b:Ly6/X;

    invoke-static {v0}, Ly6/X;->f(Ly6/X;)V

    return-void
.end method
