.class public Lv7/a$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a;->H(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lwd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$SearchTittle",
            "val$searchText",
            "val$searchTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$o;->a:Ljava/lang/String;

    iput-object p2, p0, Lv7/a$o;->b:Ljava/lang/String;

    iput-object p3, p0, Lv7/a$o;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object p1, p0, Lv7/a$o;->a:Ljava/lang/String;

    iget-object v0, p0, Lv7/a$o;->b:Ljava/lang/String;

    iget-object v1, p0, Lv7/a$o;->c:Ljava/lang/String;

    new-instance v2, Lv7/a$o$a;

    invoke-direct {v2, p0}, Lv7/a$o$a;-><init>(Lv7/a$o;)V

    invoke-static {p1, v0, v1, v2}, Ls6/d;->W1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls6/e;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
