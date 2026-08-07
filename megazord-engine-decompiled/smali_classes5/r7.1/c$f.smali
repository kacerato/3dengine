.class public Lr7/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/c;->t1(Z)Lr7/c$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lr7/c;


# direct methods
.method public constructor <init>(Lr7/c;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$isDettached"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lr7/c$f;->b:Lr7/c;

    iput-boolean p2, p0, Lr7/c$f;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-boolean v0, p0, Lr7/c$f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lr7/c$f;->b:Lr7/c;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->Q0()V

    iget-object v0, p0, Lr7/c$f;->b:Lr7/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr7/c;->s1(Lr7/c;Z)Z

    :cond_0
    return-void
.end method
