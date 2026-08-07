.class public Llb/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lya/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llb/f;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Llb/f;


# direct methods
.method public constructor <init>(Llb/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Llb/f$d;->a:Llb/f;

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

    add-float/2addr p1, p2

    return p1
.end method
