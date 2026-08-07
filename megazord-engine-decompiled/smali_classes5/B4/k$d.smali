.class public LB4/k$d;
.super Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB4/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LB4/k;


# direct methods
.method public constructor <init>(LB4/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LB4/k$d;->d:LB4/k;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Engine/Modules/UpdateModule;-><init>()V

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, LB4/k$d;->d:LB4/k;

    invoke-static {v0}, LB4/k;->l(LB4/k;)V

    return-void
.end method
