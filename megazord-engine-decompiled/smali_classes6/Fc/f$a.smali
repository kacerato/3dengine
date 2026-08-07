.class public LFc/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFc/f;->c(Ljava/io/File;LFc/f$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LFc/f$c;


# direct methods
.method public constructor <init>(LFc/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LFc/f$a;->a:LFc/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, LFc/f$a;->a:LFc/f$c;

    invoke-interface {v0}, LFc/f$c;->b()V

    return-void
.end method
