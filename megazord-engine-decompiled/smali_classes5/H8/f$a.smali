.class public LH8/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LH8/f;->n([Ljava/lang/String;Ld5/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:LH8/f;


# direct methods
.method public constructor <init>(LH8/f;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LH8/f$a;->b:LH8/f;

    iput-object p2, p0, LH8/f$a;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LH8/f$a;->b:LH8/f;

    invoke-static {v0}, LH8/f;->o(LH8/f;)LJAVARuntime/TerminalCLIExtension;

    move-result-object v0

    iget-object v1, p0, LH8/f$a;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, LJAVARuntime/TerminalCLIExtension;->start([Ljava/lang/String;)V

    return-void
.end method
