.class public final synthetic Lf7/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf7/H;


# direct methods
.method public synthetic constructor <init>(Lf7/H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/D;->b:Lf7/H;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf7/D;->b:Lf7/H;

    invoke-static {v0}, Lf7/H;->f(Lf7/H;)V

    return-void
.end method
