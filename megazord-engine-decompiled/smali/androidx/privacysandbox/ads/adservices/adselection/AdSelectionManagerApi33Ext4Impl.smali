.class public final Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerApi33Ext4Impl;
.super Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "ClassVerificationFailure"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresExtension;
    extension = 0xf4240
    version = 0x4
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/privacysandbox/ads/adservices/adselection/q;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getSystemService\u2026ctionManager::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/adselection/r;->a(Ljava/lang/Object;)Landroid/adservices/adselection/AdSelectionManager;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManagerImplCommon;-><init>(Landroid/adservices/adselection/AdSelectionManager;)V

    return-void
.end method
