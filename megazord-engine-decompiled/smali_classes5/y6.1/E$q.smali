.class public Ly6/E$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/E;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkb/a;

.field public final synthetic b:Ly6/E;


# direct methods
.method public constructor <init>(Ly6/E;Lkb/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$raw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ly6/E$q;->b:Ly6/E;

    iput-object p2, p0, Ly6/E$q;->a:Lkb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variable"
        }
    .end annotation

    iget-object p1, p0, Ly6/E$q;->a:Lkb/a;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lkb/a;->H0(Ljava/lang/String;)V

    iget-object p1, p0, Ly6/E$q;->b:Ly6/E;

    invoke-static {p1}, Ly6/E;->u(Ly6/E;)V

    iget-object p1, p0, Ly6/E$q;->b:Ly6/E;

    invoke-virtual {p1}, Ly6/E;->P0()V

    iget-object p1, p0, Ly6/E$q;->b:Ly6/E;

    invoke-static {p1}, Ly6/E;->v(Ly6/E;)Ly6/X;

    move-result-object p1

    invoke-virtual {p1}, Ly6/X;->i0()V

    return-void
.end method
