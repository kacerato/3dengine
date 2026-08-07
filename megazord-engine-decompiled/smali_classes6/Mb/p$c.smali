.class public LMb/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMb/p$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LMb/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LMb/p$d;LMb/p$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldTexture",
            "newTexture"
        }
    .end annotation

    return-void
.end method
