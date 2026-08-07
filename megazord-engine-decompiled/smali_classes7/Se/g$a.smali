.class public LSe/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:LSe/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LSe/g;

    invoke-direct {v0}, LSe/g;-><init>()V

    sput-object v0, LSe/g$a;->a:LSe/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()LSe/g;
    .locals 1

    sget-object v0, LSe/g$a;->a:LSe/g;

    return-object v0
.end method
