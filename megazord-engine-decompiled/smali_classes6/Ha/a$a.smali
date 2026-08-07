.class public LHa/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/PopupDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LHa/a;->H0(LJAVARuntime/PopupDialog;JILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;LHa/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:I

.field public final synthetic c:LJAVARuntime/PopupDialog;

.field public final synthetic d:LHa/a;


# direct methods
.method public constructor <init>(LHa/a;JILJAVARuntime/PopupDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$sessionId",
            "val$outputIndex",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LHa/a$a;->d:LHa/a;

    iput-wide p2, p0, LHa/a$a;->a:J

    iput p4, p0, LHa/a$a;->b:I

    iput-object p5, p0, LHa/a$a;->c:LJAVARuntime/PopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked()V
    .locals 5

    iget-object v0, p0, LHa/a$a;->d:LHa/a;

    iget-wide v1, p0, LHa/a$a;->a:J

    iget v3, p0, LHa/a$a;->b:I

    iget-object v4, p0, LHa/a$a;->c:LJAVARuntime/PopupDialog;

    invoke-static {v0, v1, v2, v3, v4}, LHa/a;->G0(LHa/a;JILJAVARuntime/PopupDialog;)V

    return-void
.end method
