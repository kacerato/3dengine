.class public final synthetic Ly0/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ly0/w;


# direct methods
.method public synthetic constructor <init>(Ly0/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/u;->b:Ly0/w;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly0/u;->b:Ly0/w;

    invoke-static {v0}, Ly0/w;->b(Ly0/w;)V

    return-void
.end method
