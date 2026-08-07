.class public Ly6/l$b;
.super Lr7/c$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/l;->Q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

.field public final synthetic c:Ly6/l;


# direct methods
.method public constructor <init>(Ly6/l;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$attributes",
            "val$attribute"
        }
    .end annotation

    iput-object p1, p0, Ly6/l$b;->c:Ly6/l;

    iput-object p2, p0, Ly6/l$b;->a:Ljava/util/List;

    iput-object p3, p0, Ly6/l$b;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    invoke-direct {p0}, Lr7/c$h;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lr7/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-super {p0, p1}, Lr7/c$h;->b(Lr7/c$g;)V

    iget-object p1, p0, Ly6/l$b;->a:Ljava/util/List;

    iget-object v0, p0, Ly6/l$b;->b:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Ly6/l$b;->c:Ly6/l;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ly6/l;->B1(Ly6/l;Z)V

    iget-object p1, p0, Ly6/l$b;->c:Ly6/l;

    invoke-static {p1}, Ly6/l;->C1(Ly6/l;)V

    return-void
.end method
