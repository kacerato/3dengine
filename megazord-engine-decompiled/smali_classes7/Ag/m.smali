.class public final LAg/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTf/e;


# annotations
.annotation build LFf/f0;
.end annotation


# instance fields
.field public final b:LTf/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/StackTraceElement;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LTf/e;Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1    # LTf/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/StackTraceElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LAg/m;->b:LTf/e;

    iput-object p2, p0, LAg/m;->c:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public getCallerFrame()LTf/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LAg/m;->b:LTf/e;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LAg/m;->c:Ljava/lang/StackTraceElement;

    return-object v0
.end method
