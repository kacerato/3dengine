.class public Lh9/f$E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh9/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh9/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLh9/p;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh9/p;

.field public final synthetic b:Ljava/lang/reflect/Field;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lh9/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$field",
            "val$instance",
            "val$classAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh9/f$E;->a:Lh9/p;

    iput-object p2, p0, Lh9/f$E;->b:Ljava/lang/reflect/Field;

    iput-object p3, p0, Lh9/f$E;->c:Ljava/lang/Object;

    iput-object p4, p0, Lh9/f$E;->d:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object p1, p0, Lh9/f$E;->a:Lh9/p;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh9/f$E;->b:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lh9/f$E;->c:Ljava/lang/Object;

    iget-object v2, p0, Lh9/f$E;->d:Ljava/lang/Class;

    invoke-interface {p1, v0, v1, v2}, Lh9/p;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
