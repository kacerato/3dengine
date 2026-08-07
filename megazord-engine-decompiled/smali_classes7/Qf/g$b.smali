.class public final LQf/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQf/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQf/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LQf/j$c<",
        "LQf/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic b:LQf/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LQf/g$b;

    invoke-direct {v0}, LQf/g$b;-><init>()V

    sput-object v0, LQf/g$b;->b:LQf/g$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
