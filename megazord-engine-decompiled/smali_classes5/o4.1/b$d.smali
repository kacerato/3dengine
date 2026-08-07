.class public Lo4/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo4/b;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lo4/b;


# direct methods
.method public constructor <init>(Lo4/b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$token"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lo4/b$d;->b:Lo4/b;

    iput-object p2, p0, Lo4/b$d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr7/g;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "popup",
            "area"
        }
    .end annotation

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lo4/b$d$a;

    invoke-direct {v0, p0, p1}, Lo4/b$d$a;-><init>(Lo4/b$d;Lr7/g;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
