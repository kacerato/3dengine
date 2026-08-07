.class public Lt6/f$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt6/f$d;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lt6/f$d;


# direct methods
.method public constructor <init>(Lt6/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lt6/f$d$a;->b:Lt6/f$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lt6/f$d$a;->b:Lt6/f$d;

    iget-object v0, v0, Lt6/f$d;->b:Lt6/f;

    invoke-static {v0}, Lt6/f;->w1(Lt6/f;)V

    return-void
.end method
