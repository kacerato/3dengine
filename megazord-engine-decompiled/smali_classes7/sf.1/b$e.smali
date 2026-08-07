.class public final Lsf/b$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final a:LTe/J;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkf/h;

    invoke-direct {v0}, Lkf/h;-><init>()V

    sput-object v0, Lsf/b$e;->a:LTe/J;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
