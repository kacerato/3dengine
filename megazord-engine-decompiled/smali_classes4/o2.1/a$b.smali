.class public Lo2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/a;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lo2/a;


# direct methods
.method public constructor <init>(Lo2/a;I)V
    .locals 0

    iput-object p1, p0, Lo2/a$b;->c:Lo2/a;

    iput p2, p0, Lo2/a$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo2/a$b;->c:Lo2/a;

    iget v1, p0, Lo2/a$b;->b:I

    invoke-static {v0, v1}, Lo2/a;->c(Lo2/a;I)V

    return-void
.end method
