.class public final Lz0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lz0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz0/j;

    invoke-direct {v0}, Lz0/j;-><init>()V

    sput-object v0, Lz0/j$a;->a:Lz0/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lz0/j;
    .locals 1

    sget-object v0, Lz0/j$a;->a:Lz0/j;

    return-object v0
.end method
