.class public LUb/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LUb/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LUb/i;-><init>(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LUb/i;


# direct methods
.method public constructor <init>(LUb/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LUb/i$a;->a:LUb/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    return-void
.end method
