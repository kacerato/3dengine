.class public Lr7/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/i$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/i;->B1(Ljava/lang/String;Ljava/lang/String;Lr7/i$h;ZZLr7/i$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lr7/i$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, Lr7/i$f;->dismiss()V

    return-void
.end method
