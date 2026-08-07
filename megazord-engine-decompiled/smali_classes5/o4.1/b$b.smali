.class public Lo4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo4/b;->y(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo4/b;


# direct methods
.method public constructor <init>(Lo4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lo4/b$b;->a:Lo4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "adapterPosition"
        }
    .end annotation

    iget-object p1, p0, Lo4/b$b;->a:Lo4/b;

    invoke-static {p1}, Lo4/b;->D(Lo4/b;)V

    return-void
.end method
