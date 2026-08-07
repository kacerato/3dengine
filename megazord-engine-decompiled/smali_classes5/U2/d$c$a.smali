.class public final LU2/d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LU2/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LU2/j;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LU2/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LU2/d$c$a;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LU2/d$c$a;->b:LU2/j;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;LU2/j;LU2/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LU2/d$c$a;-><init>(Ljava/lang/Object;LU2/j;)V

    return-void
.end method

.method public static synthetic a(LU2/d$c$a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LU2/d$c$a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(LU2/d$c$a;)LU2/j;
    .locals 0

    iget-object p0, p0, LU2/d$c$a;->b:LU2/j;

    return-object p0
.end method
