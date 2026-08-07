.class public final synthetic Lf7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf7/p;


# direct methods
.method public synthetic constructor <init>(Lf7/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/i;->b:Lf7/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf7/i;->b:Lf7/p;

    invoke-static {v0}, Lf7/p;->a(Lf7/p;)V

    return-void
.end method
