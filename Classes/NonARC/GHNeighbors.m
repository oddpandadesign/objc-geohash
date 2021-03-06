/*
The MIT License

Copyright (c) 2011 lyo.kato@gmail.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

#import "GHNeighbors.h"

@implementation GHNeighbors

@synthesize north;
@synthesize south;
@synthesize east;
@synthesize west;
@synthesize northWest;
@synthesize northEast;
@synthesize southWest;
@synthesize southEast;

+ (id)neighborsWithNorth:northHash
                   south:southHash
                    west:westHash
                    east:eastHash
               northWest:northWestHash
               northEast:northEastHash
               southWest:southWestHash
               southEast:southEastHash
{
  return [[[GHNeighbors alloc] initWithNorth:northHash 
                                       south:southHash
                                        west:westHash
                                        east:eastHash
                                   northWest:northWestHash
                                   northEast:northEastHash
                                   southWest:southWestHash
                                   southEast:southEastHash] autorelease];
}

- (id)initWithNorth:northHash
              south:southHash
               west:westHash
               east:eastHash
          northWest:northWestHash
          northEast:northEastHash
          southWest:southWestHash
          southEast:southEastHash
{
  if ((self = [super init]) != nil) {
    north = [northHash retain];
    south = [southHash retain];
    west = [westHash retain];
    east = [eastHash retain];
    northWest = [northWestHash retain];
    northEast = [northEastHash retain];
    southWest = [southWestHash retain];
    southEast = [southEastHash retain];
  }
  return self;
}

- (void)dealloc 
{
  [north release];
  [south release];
  [east release];
  [west release];
  [northWest release];
  [northEast release];
  [southWest release];
  [southEast release];

  [super dealloc];
}
@end
