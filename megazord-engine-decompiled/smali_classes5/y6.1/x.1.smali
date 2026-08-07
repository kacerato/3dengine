.class public final synthetic Ly6/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ly6/E;


# direct methods
.method public synthetic constructor <init>(Ly6/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/x;->b:Ly6/E;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly6/x;->b:Ly6/E;

    invoke-static {v0}, Ly6/E;->j(Ly6/E;)V

    return-void
.end method
