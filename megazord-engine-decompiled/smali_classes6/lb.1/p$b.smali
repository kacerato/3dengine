.class public Llb/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb/p;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llb/p;


# direct methods
.method public constructor <init>(Llb/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Llb/p$b;->a:Llb/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    sub-float/2addr p1, p2

    return p1
.end method
