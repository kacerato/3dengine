.class public Lv7/a$i$c$d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv7/a$i$c$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv7/a$i$c$d;


# direct methods
.method public constructor <init>(Lv7/a$i$c$d;)V
    .locals 0

    iput-object p1, p0, Lv7/a$i$c$d$b;->a:Lv7/a$i$c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/itsmagic/engine/Activities/Editor/Dialogs/KeystoreDialog;->isAabExport:Z

    const-string v0, "EDITOR_TOP_BAR_EXPORT_OFFLINE_APK_PROJECT_BUTTON"

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/c;->a(Ljava/lang/String;)Z

    invoke-static {}, LJ5/c;->u1()Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
