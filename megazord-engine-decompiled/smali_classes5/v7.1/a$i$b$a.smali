.class public Lv7/a$i$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv7/a$i$b;->onSelected(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv7/a$i$b;


# direct methods
.method public constructor <init>(Lv7/a$i$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lv7/a$i$b$a;->a:Lv7/a$i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inProjectPath"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Utils/y;->c()V

    new-instance v0, Lv7/a$i$b$a$a;

    invoke-direct {v0, p0}, Lv7/a$i$b$a$a;-><init>(Lv7/a$i$b$a;)V

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->K(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/World/a$k;)V

    return-void
.end method
