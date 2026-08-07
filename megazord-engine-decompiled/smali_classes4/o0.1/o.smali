.class public abstract Lo0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/o$a;,
        Lo0/o$b;,
        Lo0/o$c;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lo0/o$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lo0/i$b;

    invoke-direct {v0}, Lo0/i$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Lo0/o$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Lo0/o$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
