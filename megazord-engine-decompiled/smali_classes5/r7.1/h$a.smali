.class public Lr7/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/h$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr7/h;->B1(Ljava/lang/String;Ljava/lang/String;Lr7/h$h;ZZLr7/h$i;)V
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
.method public a(Lr7/h$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-interface {p1}, Lr7/h$f;->dismiss()V

    return-void
.end method
