.class public Lcom/itsmagic/engine/Activities/Editor/Dialogs/KeystoreDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static isAabExport:Z = false

.field public static keystorePath:Ljava/lang/String; = ""

.field public static storePassword:Ljava/lang/String; = ""

.field public static keyAlias:Ljava/lang/String; = ""

.field public static keyPassword:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Export Options (APK / AAB & Keystore)"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Export APK (.apk)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Export Android App Bundle (.aab)"

    aput-object v3, v1, v2

    sget-boolean v2, Lcom/itsmagic/engine/Activities/Editor/Dialogs/KeystoreDialog;->isAabExport:Z

    new-instance v3, Lcom/itsmagic/engine/Activities/Editor/Dialogs/KeystoreDialog$a;

    invoke-direct {v3}, Lcom/itsmagic/engine/Activities/Editor/Dialogs/KeystoreDialog$a;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Export"

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Dialogs/KeystoreDialog$b;

    invoke-direct {v2, p1}, Lcom/itsmagic/engine/Activities/Editor/Dialogs/KeystoreDialog$b;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
