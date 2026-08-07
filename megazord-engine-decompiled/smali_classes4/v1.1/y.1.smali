.class public final Lv1/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lv1/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv1/z;

    invoke-direct {v0}, Lv1/z;-><init>()V

    sput-object v0, Lv1/y;->a:Lv1/z;

    return-void
.end method

.method public static a()Lv1/z;
    .locals 1

    sget-object v0, Lv1/y;->a:Lv1/z;

    return-object v0
.end method
